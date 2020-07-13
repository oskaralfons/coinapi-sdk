# coding: utf-8

"""
    OEML - REST API

    This section will provide necessary information about the `CoinAPI OEML REST API` protocol.   # noqa: E501

    The version of the OpenAPI document: v1
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest
import datetime

import openapi_client
from openapi_client.models.execution_report import ExecutionReport  # noqa: E501
from openapi_client.rest import ApiException

class TestExecutionReport(unittest.TestCase):
    """ExecutionReport unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test ExecutionReport
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.execution_report.ExecutionReport()  # noqa: E501
        if include_optional :
            return ExecutionReport(
                exchange_id = 'KRAKEN', 
                client_order_id = 'KPP-222389382-AQ', 
                symbol_exchange = 'BTCUSD', 
                symbol_coinapi = 'KRAKEN_SPOT_BTC_USD', 
                amount_order = 0.045, 
                price = 0.0783, 
                side = 'BUY', 
                order_type = 'LIMIT', 
                time_in_force = 'GOOD_TILL_CANCEL', 
                expire_time = null, 
                exec_inst = MAKER_OR_CANCEL, 
                client_order_id_format_exchange = 'f81211e2-27c4-b86a-8143-01088ba9222c', 
                exchange_order_id = '90832ASASAS89789-1112', 
                amount_open = 0.22, 
                amount_filled = 0.0, 
                status = 'RECEIVED', 
                time_order = [
                    [
                        '["RECEIVED","2020-05-27T11:16:20.1677709Z"]'
                        ]
                    ], 
                error_message = '{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}'
            )
        else :
            return ExecutionReport(
                exchange_id = 'KRAKEN',
                client_order_id = 'KPP-222389382-AQ',
                amount_order = 0.045,
                price = 0.0783,
                side = 'BUY',
                order_type = 'LIMIT',
                time_in_force = 'GOOD_TILL_CANCEL',
                client_order_id_format_exchange = 'f81211e2-27c4-b86a-8143-01088ba9222c',
                amount_open = 0.22,
                amount_filled = 0.0,
                status = 'RECEIVED',
                time_order = [
                    [
                        '["RECEIVED","2020-05-27T11:16:20.1677709Z"]'
                        ]
                    ],
        )

    def testExecutionReport(self):
        """Test ExecutionReport"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
