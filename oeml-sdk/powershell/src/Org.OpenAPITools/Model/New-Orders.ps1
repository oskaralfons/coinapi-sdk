function New-Orders {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.OrdersData[]]
        ${data}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.Orders' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.Orders -ArgumentList @(
            ${type},
            ${exchangeUnderscoreid},
            ${data}
        )
    }
}
