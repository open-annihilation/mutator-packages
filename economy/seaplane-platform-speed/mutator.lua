function mutate(ctx)
  return {
    rules = {
      named("ARMPLAT"):change { workertime = scale(ctx.options.factor) },
      named("CORPLAT"):change { workertime = scale(ctx.options.factor) },
    },
  }
end
