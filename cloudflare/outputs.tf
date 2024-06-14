output "records" {
  description = "Records"
  value       = { for i, j in cloudflare_record.records : i => j.hostname }
}