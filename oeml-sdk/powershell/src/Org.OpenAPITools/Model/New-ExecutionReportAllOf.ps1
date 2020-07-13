function New-ExecutionReportAllOf {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${exchangeUnderscoreorderUnderscoreid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${amountUnderscoreopen},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${amountUnderscorefilled},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Org.OpenAPITools.Model.OrdStatus]
        ${status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[][]]
        ${timeUnderscoreorder},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${errorUnderscoremessage}
    )

    Process {
        'Creating object: Org.OpenAPITools.Model.ExecutionReportAllOf' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        New-Object -TypeName Org.OpenAPITools.Model.ExecutionReportAllOf -ArgumentList @(
            ${clientUnderscoreorderUnderscoreidUnderscoreformatUnderscoreexchange},
            ${exchangeUnderscoreorderUnderscoreid},
            ${amountUnderscoreopen},
            ${amountUnderscorefilled},
            ${status},
            ${timeUnderscoreorder},
            ${errorUnderscoremessage}
        )
    }
}
