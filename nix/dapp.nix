# This file has been generated by dapp2nix 0.0.0, do not edit.
{ solidityPackage, solc, dapp2 }:

let
  inherit (builtins) map listToAttrs attrNames attrValues;
  mapAttrs = if (builtins ? mapAttrs)
    then builtins.mapAttrs
    else f: attrs:
      listToAttrs (map
        (name: { inherit name; value = f name attrs."${name}"; })
        (attrNames attrs));

  defaults = {
    inherit solc;
    test-hevm = dapp2.test-hevm;
    doCheck = true;
  };

  package = spec: let
    spec' = defaults // (removeAttrs spec [ "repo'" ]);
  in solidityPackage (spec' // {
    deps = map (spec:
      package (spec // { inherit (spec') solc test-hevm doCheck; })
    ) (attrValues spec'.deps);
  });

  packageSpecs = specs:
    mapAttrs (_: package) specs;

  specs = rec {
    ds-auth_b36fd91 = rec {
      name = "ds-auth";
      deps = {
        ds-test = ds-test_5559e6c;
      };
      repo' = {
        name = "ds-auth-b36fd91-source";
        url = "https://github.com/dapphub/ds-auth";
        rev = "b36fd917563483d10967b57af1c9c88d06204d67";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-auth_f783169 = rec {
      name = "ds-auth";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-auth-f783169-source";
        url = "https://github.com/dapphub/ds-auth";
        rev = "f783169408c278f85e26d77ba7b45823ed9503dd";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-chief_3277c98 = rec {
      name = "ds-chief";
      deps = {
        ds-roles = ds-roles_555a773;
        ds-test = ds-test_5559e6c;
        ds-thing = ds-thing_f10766a;
        ds-token = ds-token_bf25ded;
      };
      repo' = {
        name = "ds-chief-3277c98-source";
        url = "https://github.com/dapphub/ds-chief";
        rev = "3277c9809c26c4e26615bad71794c420cc0f56c6";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-chief_58a02ff = rec {
      name = "ds-chief";
      deps = {
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-chief-58a02ff-source";
        url = "https://github.com/dapphub/ds-chief";
        rev = "58a02ff50bdbf5729252aab91bc468a3e77be6bb";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-exec_c53aab4 = rec {
      name = "ds-exec";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-exec-c53aab4-source";
        url = "https://github.com/dapphub/ds-exec";
        rev = "c53aab4ba91645b30b0644972ef016b5ee606ca8";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-guard_4678e1c = rec {
      name = "ds-guard";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-guard-4678e1c-source";
        url = "https://github.com/dapphub/ds-guard";
        rev = "4678e1c74fce1542f1379f11325d7bfbbb897344";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-math_49b3893 = rec {
      name = "ds-math";
      deps = {
        ds-test = ds-test_5559e6c;
      };
      repo' = {
        name = "ds-math-49b3893-source";
        url = "https://github.com/dapphub/ds-math";
        rev = "49b38937c0c0b8af73b05f767a0af9d5e85a1e6c";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-math_784079b = rec {
      name = "ds-math";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-math-784079b-source";
        url = "https://github.com/dapphub/ds-math";
        rev = "784079b72c4d782b022b3e893a7c5659aa35971a";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-note_beef816 = rec {
      name = "ds-note";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-note-beef816-source";
        url = "https://github.com/dapphub/ds-note";
        rev = "beef8166f2184a4bac3d02abdb944647fd735060";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-note_dbc97b1 = rec {
      name = "ds-note";
      deps = {
        ds-test = ds-test_5559e6c;
      };
      repo' = {
        name = "ds-note-dbc97b1-source";
        url = "https://github.com/dapphub/ds-note";
        rev = "dbc97b158c743d8a33634d26c543f59bc0be61c3";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-pause_3d367e5 = rec {
      name = "ds-pause";
      deps = {
        ds-chief = ds-chief_58a02ff;
        ds-proxy = ds-proxy_379f5e2;
        ds-spell = ds-spell_c908b78;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "ds-pause-3d367e5-source";
        url = "https://github.com/dapphub/ds-pause";
        rev = "3d367e541bb3e74bb115886f5c2903125e883b04";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-proxy_379f5e2 = rec {
      name = "ds-proxy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-proxy-379f5e2-source";
        url = "https://github.com/dapphub/ds-proxy";
        rev = "379f5e2fc0a6ed5a7a96d3f211cc5ed8761baf00";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dsr_d5c1a2e = rec {
      name = "dsr";
      deps = {
        ds-test = ds-test_a4e4005;
        dss = dss_487ac6c;
      };
      repo' = {
        name = "dsr-d5c1a2e-source";
        url = "https://github.com/makerdao/dsr";
        rev = "d5c1a2e1c72ca9a1b03c8b495aa6203bc8d1c92c";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-roles_0138372 = rec {
      name = "ds-roles";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-roles-0138372-source";
        url = "https://github.com/dapphub/ds-roles";
        rev = "01383725a4240000c0e274e55bdcf251570fd486";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-roles_555a773 = rec {
      name = "ds-roles";
      deps = {
        ds-auth = ds-auth_b36fd91;
        ds-test = ds-test_5559e6c;
      };
      repo' = {
        name = "ds-roles-555a773-source";
        url = "https://github.com/dapphub/ds-roles";
        rev = "555a7733b6beb5a550beb1c91334a24960ccdb14";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss_487ac6c = rec {
      name = "dss";
      deps = {
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "dss-487ac6c-source";
        url = "https://github.com/makerdao/dss";
        rev = "487ac6c83f60f0fb99e7dd448d5ccf959c9be553";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-cdp-manager_44a57de = rec {
      name = "dss-cdp-manager";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_7e0a043;
      };
      repo' = {
        name = "dss-cdp-manager-44a57de-source";
        url = "https://github.com/makerdao/dss-cdp-manager";
        rev = "44a57ded27c1d7d8cc12ddb9ce10706bec757371";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy_7e0a043 = rec {
      name = "dss-deploy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-guard = ds-guard_4678e1c;
        ds-pause = ds-pause_3d367e5;
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-value = ds-value_d2107c1;
        ds-weth = ds-weth_dfada5b;
        dsr = dsr_d5c1a2e;
      };
      repo' = {
        name = "dss-deploy-7e0a043-source";
        url = "https://github.com/makerdao/dss-deploy";
        rev = "7e0a043646405f9a7cfa99239439a1c273c5a45e";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-deploy_b132994 = rec {
      name = "dss-deploy";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-guard = ds-guard_4678e1c;
        ds-pause = ds-pause_3d367e5;
        ds-roles = ds-roles_0138372;
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
        ds-value = ds-value_d2107c1;
        ds-weth = ds-weth_dfada5b;
        dsr = dsr_d5c1a2e;
      };
      repo' = {
        name = "dss-deploy-b132994-source";
        url = "https://github.com/makerdao/dss-deploy";
        rev = "b132994ee699dd2f09a05918e86346382a9fc53b";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-spell_c908b78 = rec {
      name = "ds-spell";
      deps = {
        ds-exec = ds-exec_c53aab4;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-spell-c908b78-source";
        url = "https://github.com/dapphub/ds-spell";
        rev = "c908b7807f08661b4eca97adff6d9561d0116244";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    dss-proxy-actions_0cda932 = rec {
      name = "dss-proxy-actions";
      deps = {
        ds-proxy = ds-proxy_379f5e2;
        ds-test = ds-test_a4e4005;
        dss-cdp-manager = dss-cdp-manager_44a57de;
      };
      repo' = {
        name = "dss-proxy-actions-0cda932-source";
        url = "https://github.com/makerdao/dss-proxy-actions";
        rev = "0cda932b46dfee35f1ee0fb864a8d3a0d1d43676";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-stop_31d56c4 = rec {
      name = "ds-stop";
      deps = {
        ds-auth = ds-auth_b36fd91;
        ds-note = ds-note_dbc97b1;
        ds-test = ds-test_5559e6c;
      };
      repo' = {
        name = "ds-stop-31d56c4-source";
        url = "https://github.com/dapphub/ds-stop";
        rev = "31d56c42009939dc07eaa0c3ca91a8495c31b207";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-stop_6e2bda6 = rec {
      name = "ds-stop";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-stop-6e2bda6-source";
        url = "https://github.com/dapphub/ds-stop";
        rev = "6e2bda69cb3cbf25a475491d9bc22969adb05993";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-test_5559e6c = rec {
      name = "ds-test";
      deps = {
      };
      repo' = {
        name = "ds-test-5559e6c-source";
        url = "https://github.com/dapphub/ds-test";
        rev = "5559e6c3387a2c2bf0fc9df4d2b42b334efeb752";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-test_a4e4005 = rec {
      name = "ds-test";
      deps = {
      };
      repo' = {
        name = "ds-test-a4e4005-source";
        url = "https://github.com/dapphub/ds-test";
        rev = "a4e40050b809705b15867939f5829540c50cb84f";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-thing_5e49fcb = rec {
      name = "ds-thing";
      deps = {
        ds-auth = ds-auth_f783169;
        ds-math = ds-math_784079b;
        ds-note = ds-note_beef816;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "ds-thing-5e49fcb-source";
        url = "https://github.com/dapphub/ds-thing";
        rev = "5e49fcbdf4ef8ccd241423ed114576f51c42f1e0";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-thing_f10766a = rec {
      name = "ds-thing";
      deps = {
        ds-auth = ds-auth_b36fd91;
        ds-math = ds-math_49b3893;
        ds-note = ds-note_dbc97b1;
        ds-test = ds-test_5559e6c;
      };
      repo' = {
        name = "ds-thing-f10766a-source";
        url = "https://github.com/dapphub/ds-thing";
        rev = "f10766a6db294e020a5d540e07314633d15270f5";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-token_bf25ded = rec {
      name = "ds-token";
      deps = {
        ds-math = ds-math_49b3893;
        ds-stop = ds-stop_31d56c4;
        ds-test = ds-test_5559e6c;
        erc20 = erc20_768a3d8;
      };
      repo' = {
        name = "ds-token-bf25ded-source";
        url = "https://github.com/dapphub/ds-token";
        rev = "bf25ded913f142759930e96dac74a642bb295692";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-token_cee36a1 = rec {
      name = "ds-token";
      deps = {
        ds-math = ds-math_784079b;
        ds-stop = ds-stop_6e2bda6;
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-token-cee36a1-source";
        url = "https://github.com/dapphub/ds-token";
        rev = "cee36a14685b3f93ffa0332853d3fcd943fe96a5";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-value_d2107c1 = rec {
      name = "ds-value";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-thing = ds-thing_5e49fcb;
      };
      repo' = {
        name = "ds-value-d2107c1-source";
        url = "https://github.com/dapphub/ds-value";
        rev = "d2107c1751f086aed3c38a2f433d6945444af7d6";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    ds-weth_dfada5b = rec {
      name = "ds-weth";
      deps = {
        ds-test = ds-test_a4e4005;
        erc20 = erc20_f322aac;
      };
      repo' = {
        name = "ds-weth-dfada5b-source";
        url = "https://github.com/dapphub/ds-weth";
        rev = "dfada5bca7a00046c1ddc37c0c43106a8c0a4e5a";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    erc20_768a3d8 = rec {
      name = "erc20";
      deps = {
      };
      repo' = {
        name = "erc20-768a3d8-source";
        url = "https://github.com/dapphub/erc20";
        rev = "768a3d8ca30590522c68951e989e5b69f5859151";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    erc20_f322aac = rec {
      name = "erc20";
      deps = {
      };
      repo' = {
        name = "erc20-f322aac-source";
        url = "https://github.com/dapphub/erc20";
        rev = "f322aaca414db343337814097d2af43214bee96c";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    gov-polling-generator_d08e43e = rec {
      name = "gov-polling-generator";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "gov-polling-generator-d08e43e-source";
        url = "https://github.com/makerdao/gov-polling-generator";
        rev = "d08e43ee1a8d6daac3fc0bc4aee5a0c92f62c2e8";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    line-spell_0374ddb = rec {
      name = "line-spell";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_b132994;
      };
      repo' = {
        name = "line-spell-0374ddb-source";
        url = "https://github.com/makerdao/line-spell";
        rev = "0374ddb5c1fe737cbda8bb45e6c0c223ecfe6592";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    median_ba60abb = rec {
      name = "median";
      deps = {
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "median-ba60abb-source";
        url = "https://github.com/makerdao/median";
        rev = "ba60abbad1efd6a6922cfb14b7d4bba0a1ee830a";
        ref = "gas-saver";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    multicall_6c30263 = rec {
      name = "multicall";
      deps = {
        ds-test = ds-test_5559e6c;
      };
      repo' = {
        name = "multicall-6c30263-source";
        url = "https://github.com/makerdao/multicall";
        rev = "6c302634ef4755b60be7a4bceb7c05f85da9a757";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    osm_1721b9d = rec {
      name = "osm";
      deps = {
        ds-stop = ds-stop_6e2bda6;
        ds-test = ds-test_a4e4005;
        ds-value = ds-value_d2107c1;
      };
      repo' = {
        name = "osm-1721b9d-source";
        url = "https://github.com/makerdao/osm";
        rev = "1721b9d2eeedca4f270d992e27d0af0e1f05118d";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    proxy-registry_1aa2ba3 = rec {
      name = "proxy-registry";
      deps = {
        ds-proxy = ds-proxy_379f5e2;
        ds-test = ds-test_a4e4005;
      };
      repo' = {
        name = "proxy-registry-1aa2ba3-source";
        url = "https://github.com/makerdao/proxy-registry";
        rev = "1aa2ba356802a66f2de1f0ff78fabe1756b905a5";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    testchain-medians_7b58d5e = rec {
      name = "testchain-medians";
      deps = {
        ds-test = ds-test_a4e4005;
        median = median_ba60abb;
      };
      repo' = {
        name = "testchain-medians-7b58d5e-source";
        url = "https://github.com/makerdao/testchain-medians";
        rev = "7b58d5ee6a84f6c01828a64da3815b9068d23e93";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    testchain-pause-proxy-actions_9726e36 = rec {
      name = "testchain-pause-proxy-actions";
      deps = {
        ds-test = ds-test_a4e4005;
        dss-deploy = dss-deploy_7e0a043;
      };
      repo' = {
        name = "testchain-pause-proxy-actions-9726e36-source";
        url = "https://github.com/makerdao/testchain-pause-proxy-actions";
        rev = "9726e362e18ad963c301f47203dcf52c3faa7b03";
        ref = "";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    token-faucet_adf294e = rec {
      name = "token-faucet";
      deps = {
        ds-test = ds-test_a4e4005;
        ds-token = ds-token_cee36a1;
      };
      repo' = {
        name = "token-faucet-adf294e-source";
        url = "https://github.com/makerdao/token-faucet";
        rev = "adf294e2053d1fe7c14acc43529f2091b971b7a8";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    vote-proxy_ebd7b2f = rec {
      name = "vote-proxy";
      deps = {
        ds-chief = ds-chief_3277c98;
        ds-test = ds-test_5559e6c;
        ds-token = ds-token_bf25ded;
      };
      repo' = {
        name = "vote-proxy-ebd7b2f-source";
        url = "https://github.com/makerdao/vote-proxy";
        rev = "ebd7b2f484bc18d42563b443fbad05702d0abb38";
        ref = "refs/heads/master";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    testchain-dss-deployment-scripts_2954b02 = rec {
      name = "testchain-dss-deployment-scripts";
      deps = {
        ds-chief = ds-chief_58a02ff;
        ds-guard = ds-guard_4678e1c;
        dss-deploy = dss-deploy_7e0a043;
        dss-proxy-actions = dss-proxy-actions_0cda932;
        gov-polling-generator = gov-polling-generator_d08e43e;
        line-spell = line-spell_0374ddb;
        multicall = multicall_6c30263;
        osm = osm_1721b9d;
        proxy-registry = proxy-registry_1aa2ba3;
        testchain-medians = testchain-medians_7b58d5e;
        testchain-pause-proxy-actions = testchain-pause-proxy-actions_9726e36;
        token-faucet = token-faucet_adf294e;
        vote-proxy = vote-proxy_ebd7b2f;
      };
      repo' = {
        name = "testchain-dss-deployment-scripts-2954b02-source";
        url = "git@github.com:makerdao/testchain-dss-deployment-scripts";
        rev = "2954b022f6c829e79304fb223a0b48d86ae60a64";
        ref = "refs/heads/nixify-poc";
      };
      src' = fetchGit repo';
      src = "${src'}/src";
    };
    this = testchain-dss-deployment-scripts_2954b02 // { src = ./src; };
  };
in {
  inherit package packageSpecs specs;
  this = package specs.this;
  deps = packageSpecs specs.this.deps;
}
