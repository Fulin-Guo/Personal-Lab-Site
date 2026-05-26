import { defineCollection, z } from "astro:content";

const blog = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    description: z.string(),
    published: z.coerce.date(),
    tags: z.array(z.string()).default([]),
  }),
});

const changelog = defineCollection({
  type: "content",
  schema: z.object({
    title: z.string(),
    date: z.coerce.date(),
    type: z.enum(["feature", "design", "content", "fix"]).default("feature"),
    summary: z.string(),
  }),
});

export const collections = { blog, changelog };
