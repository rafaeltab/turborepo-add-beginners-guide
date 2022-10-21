import Head from "next/head";
import { Toaster } from "react-hot-toast";
import { PackBenchmarks } from "./PackBenchmarks";
import { PackHero } from "./PackHero";
import { PackLetter } from "./PackLetter";
import { PackFeatures } from "./PackFeatures";
import { GradientSectionBorder } from "../home-shared/GradientSectionBorder";

export default function Home() {
  return (
    <>
      <Head>
        <title>Turbopack</title>
        <style>
          {`
            .dark body {
              background-color: black !important;
            }
          `}
        </style>
      </Head>
      <PackHero />
      <GradientSectionBorder>
        <PackBenchmarks />
        <PackFeatures />
      </GradientSectionBorder>
      <GradientSectionBorder>
        <PackLetter />
      </GradientSectionBorder>
      <Toaster position="bottom-right" />
    </>
  );
}
