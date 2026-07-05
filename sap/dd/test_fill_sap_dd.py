import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from fill_sap_dd import parse_table_page


class FillSapDdParserTests(unittest.TestCase):
    def test_parse_table_page_extracts_field_metadata_and_relationships(self) -> None:
        html = """
        <html><body>
          <table>
            <tr>
              <th>Field</th>
              <th>Data element</th>
              <th>Checktable</th>
              <th>Datatype</th>
              <th>Length</th>
              <th>Decimals</th>
            </tr>
            <tr>
              <td>BWART</td>
              <td>BWART</td>
              <td>T156</td>
              <td>CHAR</td>
              <td>3</td>
              <td>0</td>
            </tr>
          </table>
        </body></html>
        """

        rows = parse_table_page(html, "MSEG")

        self.assertTrue(any(
            row["FIELDNAME"] == "BWART" and row["DATATYPE"] == "CHAR" and row["DOMNAME"] == "BWART"
            for row in rows["DD03L"]
        ))
        self.assertTrue(any(
            row["ROLLNAME"] == "BWART" and row["DOMNAME"] == "BWART"
            for row in rows["DD04L"]
        ))
        self.assertTrue(any(
            row["FIELDNAME"] == "BWART" and row["CHECKTABLE"] == "T156"
            for row in rows["DD05S"]
        ))


if __name__ == "__main__":
    unittest.main()
