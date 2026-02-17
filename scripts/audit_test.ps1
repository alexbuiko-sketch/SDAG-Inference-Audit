$modelName = "gemma3:4b"

# SDAG Protocol Injection
$systemGuidance = "PROTOCOL: SDAG. GOAL: Maximum Information Density. ACTION: Terminate response immediately after the core logical conclusion is reached. AVOID: Tautologies, polite fillers, and historical context unless vital. EFFICIENCY TARGET: >90%."
$question = "If every part of a ship is replaced, is it still the same ship? Solve the paradox."

$body = @{
  model = $modelName
  prompt = "$systemGuidance USER QUESTION: $question"
  stream = $false
  options = @{
    temperature = 0.0
  }
} | ConvertTo-Json

Write-Host "📡 Launching SDAG Internal Regulation Test..." -ForegroundColor Cyan

$start = Get-Date
$response = Invoke-RestMethod -Uri "http://localhost:11434/api/generate" -Method Post -Body $body -ContentType "application/json"
$end = Get-Date

$duration = ($end - $start).TotalMilliseconds
$tokenCount = $response.eval_count
$msPerToken = [math]::Round($duration / $tokenCount, 2)

Write-Host "`n--- SDAG INTERNAL REGULATION RESULT ---" -ForegroundColor Green
Write-Host "Response: `"$($response.response.Trim())`"" -ForegroundColor White
Write-Host "Tokens Generated: $tokenCount"
Write-Host "Total Time: $duration ms"
Write-Host "Latency: $msPerToken ms/token"

# Output raw data for audit
$response | Select-Object eval_duration, eval_count | Format-List
