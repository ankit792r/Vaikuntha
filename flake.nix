{
    description = "Vaikuntha - The abode of Lord Vishnu";
    inputs = {
        vrindavan.url = "path:./machines/vrindavan";
        nidhivan.url = "path:./machines/nidhivan";
    };
    outputs = { self, vrindavan, nidhivan, ... }: {
        nixosConfigurations = {
            vrindavan = vrindavan.nixosConfigurations.vrindavan;
            nidhivan = nidhivan.nixosConfigurations.nidhivan;
        };
    };
}
