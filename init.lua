local sources = {
	"core.options",
	"core.plugins",
	"core.mappings",
}

for _, source in ipairs(sources) do
	local status_ok, fault = pcall(require, source)
	if not status_ok then
		error("Failed to load " .. source .. "\n\n" .. fault)
	end
end


