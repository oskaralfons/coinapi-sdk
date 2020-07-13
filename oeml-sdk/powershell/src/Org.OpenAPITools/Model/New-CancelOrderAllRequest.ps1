function New-CancelOrderAllRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${exchangeUnderscoreid}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.CancelOrderAllRequest' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.CancelOrderAllRequest -ArgumentList @(
            ${exchangeUnderscoreid}
        )
    }
}
