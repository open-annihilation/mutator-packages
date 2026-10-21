function mutate(ctx)
  return {
    rules = {
      where { builder = 1, workertime = range(1, 1e6) }:change {
        workertime = scale(ctx.options.factor),
      },
    },
  }
end
