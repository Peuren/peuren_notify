<script setup>
import { useToast } from 'primevue/usetoast';

const toast = useToast();

window.addEventListener("message", async (event) => {
  if (event.data.type != "notify") return;

  const { severity, summary, detail, life, position } = event.data;

  toast.add({ severity: severity, summary: summary, detail: detail, life: life, group: position });
});
</script>

<template>
  <Toast position="center" group="center" />
  <Toast position="top-left" group="topleft" />
  <Toast position="top-center" group="topcenter" />
  <Toast position="top-right" group="topright" />
  <Toast position="bottom-left" group="bottomleft" />
  <Toast position="bottom-center" group="bottomcenter" />
  <Toast position="bottom-right" group="bottomright" />
</template>

<style>
:root {
  color-scheme: none !important;
  font-family: "Inter", sans-serif !important;
}

body {
  padding: 0 !important;
  margin: 0 !important;
}

.p-toast .p-toast-message {
  backdrop-filter: none !important;
}
</style>
