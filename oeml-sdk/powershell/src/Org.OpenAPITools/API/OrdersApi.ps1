function Invoke-OrdersApiV1OrdersCancelAllPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.CancelOrderAllRequest]
        ${cancelOrderAllRequest}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersCancelAllPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersCancelAllPost(
            ${cancelOrderAllRequest}
        )
    }
}

function Invoke-OrdersApiV1OrdersCancelPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.CancelOrderSingleRequest]
        ${cancelOrderSingleRequest}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersCancelPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersCancelPost(
            ${cancelOrderSingleRequest}
        )
    }
}

function Invoke-OrdersApiV1OrdersGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${exchangeId}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersGet(
            ${exchangeId}
        )
    }
}

function Invoke-OrdersApiV1OrdersPost {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [Org.OpenAPITools.Model.NewOrderSingle]
        ${newOrderSingle}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersPost' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersPost(
            ${newOrderSingle}
        )
    }
}

function Invoke-OrdersApiV1OrdersStatusClientOrderIdGet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${clientOrderId}
    )

    Process {
        'Calling method: OrdersApi-V1OrdersStatusClientOrderIdGet' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:OrdersApi.V1OrdersStatusClientOrderIdGet(
            ${clientOrderId}
        )
    }
}

