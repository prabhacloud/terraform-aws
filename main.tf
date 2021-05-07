resource "aws_glue_catalog_table" "aws_glue_catalog_table" {
  name          = "test"
  database_name = "prabhakar"

  table_type = "EXTERNAL_TABLE"

  parameters = {
    EXTERNAL              = "TRUE"
    "parquet.compression" = "SNAPPY"
  }

  storage_descriptor {
    location      = "s3://prabhakar-test-010/parquet/test/"
    input_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"

    ser_de_info {
      name                  = "my-stream"
      serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"

      parameters = {
        "serialization.format" = 1
      }
    }

    columns {
      name = "order_id"
      type = "string"
    }

    columns {
      name = "item_id"
      type = "string"
    }

    columns {
      name = "customer_id"
      type = "string"
    }

    columns {
      name = "product"
      type = "string"
    }

    columns {
      name = "amount"
      type = "int"
    }
    columns {
      name = "currency"
      type = "string"
    }
    columns {
      name = "time_stamp"
      type = "string"
    }
    columns {
      name = "dt"
      type = "string"
    }
  }
}