.class Lcom/inmobi/ads/x;
.super Ljava/lang/Object;
.source "NativeStrandDataModel.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Lorg/json/JSONObject;

.field private e:Lcom/inmobi/ads/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/inmobi/ads/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/inmobi/ads/x;->b:Lorg/json/JSONObject;

    .line 98
    invoke-virtual {p0}, Lcom/inmobi/ads/x;->g()V

    .line 99
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset;
    .locals 15

    .prologue
    .line 228
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 231
    move-object/from16 v0, p2

    invoke-virtual {p0, v4, v0}, Lcom/inmobi/ads/x;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeStrandAsset$AssetType;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid asset style for asset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset style JSON: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    .line 374
    :cond_0
    :goto_0
    return-object v1

    .line 237
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->f(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v5

    .line 238
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->g(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v6

    .line 239
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/ads/x;->a(Lorg/json/JSONObject;)[Lcom/inmobi/ads/ai;

    move-result-object v10

    .line 242
    :try_start_0
    sget-object v1, Lcom/inmobi/ads/x$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 374
    const/4 v1, 0x0

    goto :goto_0

    .line 244
    :pswitch_0
    invoke-direct {p0, v5, v6, v4}, Lcom/inmobi/ads/x;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/t;

    move-result-object v3

    .line 246
    if-eqz v10, :cond_2

    array-length v1, v10

    if-nez v1, :cond_3

    .line 247
    :cond_2
    new-instance v1, Lcom/inmobi/ads/v;

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/inmobi/ads/v;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Lorg/json/JSONObject;)V

    .line 253
    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/v;->a(Ljava/lang/String;)V

    .line 255
    const-string v2, "assetValue"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 256
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "assetValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 261
    invoke-direct {p0, v5}, Lcom/inmobi/ads/x;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/inmobi/ads/x;->d(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    move-result-object v6

    .line 260
    invoke-direct {p0, v5, v6, v4}, Lcom/inmobi/ads/x;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v6

    .line 264
    if-nez v6, :cond_4

    .line 265
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v6, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot build asset from JSON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 250
    :cond_3
    new-instance v1, Lcom/inmobi/ads/v;

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v3, v10, v0}, Lcom/inmobi/ads/v;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;[Lcom/inmobi/ads/ai;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 369
    :catch_0
    move-exception v1

    .line 370
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 371
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 267
    :cond_4
    :try_start_1
    invoke-virtual {v6, v4}, Lcom/inmobi/ads/NativeStrandAsset;->a(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v6, v1}, Lcom/inmobi/ads/NativeStrandAsset;->a(Lcom/inmobi/ads/NativeStrandAsset;)V

    .line 269
    invoke-virtual {v1, v6}, Lcom/inmobi/ads/v;->b(Lcom/inmobi/ads/NativeStrandAsset;)Z

    goto :goto_3

    .line 276
    :pswitch_1
    invoke-direct {p0, v5, v6, v4}, Lcom/inmobi/ads/x;->b(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ah$a;

    move-result-object v3

    .line 278
    new-instance v1, Lcom/inmobi/ads/ah;

    .line 279
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->h(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandAsset;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :pswitch_2
    invoke-direct {p0, v5, v6, v4}, Lcom/inmobi/ads/x;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/t;

    move-result-object v3

    .line 287
    new-instance v1, Lcom/inmobi/ads/z;

    .line 288
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/inmobi/ads/z;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandAsset;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :pswitch_3
    const-string v3, ""

    .line 295
    const/4 v1, 0x0

    .line 296
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->i(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 297
    const-string v3, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "itemUrl"

    .line 298
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 299
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 301
    :cond_5
    const-string v3, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "itemUrl"

    .line 302
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    .line 306
    :goto_4
    invoke-direct {p0, v5, v6, v4}, Lcom/inmobi/ads/x;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/t;

    move-result-object v3

    .line 308
    sget-object v5, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 309
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->i(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 310
    sget-object v5, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 311
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "openMode"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 312
    const-string v1, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "openMode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-direct {p0, v1}, Lcom/inmobi/ads/x;->c(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    move-result-object v5

    .line 314
    const-string v1, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/inmobi/ads/x;->a(Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 319
    :goto_5
    if-eqz v10, :cond_6

    array-length v1, v10

    if-nez v1, :cond_7

    .line 320
    :cond_6
    new-instance v1, Lcom/inmobi/ads/aa;

    .line 321
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/aa;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 327
    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandAsset;->a(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1, v14}, Lcom/inmobi/ads/NativeStrandAsset;->b(Ljava/lang/String;)V

    .line 329
    if-eqz v13, :cond_0

    .line 330
    invoke-virtual {v1, v13}, Lcom/inmobi/ads/NativeStrandAsset;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_7
    new-instance v6, Lcom/inmobi/ads/aa;

    .line 324
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move-object v8, v3

    move-object v11, v5

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/inmobi/ads/aa;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;[Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V

    move-object v1, v6

    goto :goto_6

    .line 335
    :pswitch_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 339
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->i(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 340
    :cond_8
    const/4 v1, 0x0

    .line 341
    const-string v3, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "itemUrl"

    .line 342
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 343
    invoke-direct {p0, v5, v6, v4}, Lcom/inmobi/ads/x;->c(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ah$a;

    move-result-object v3

    .line 344
    sget-object v5, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 345
    const-string v4, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "openMode"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 346
    const-string v1, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "openMode"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-direct {p0, v1}, Lcom/inmobi/ads/x;->c(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    move-result-object v5

    .line 348
    const-string v1, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/inmobi/ads/x;->a(Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    .line 352
    :goto_7
    if-eqz v10, :cond_9

    array-length v1, v10

    if-nez v1, :cond_a

    .line 353
    :cond_9
    new-instance v1, Lcom/inmobi/ads/w;

    .line 354
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->h(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/w;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 361
    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandAsset;->a(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1, v14}, Lcom/inmobi/ads/NativeStrandAsset;->b(Ljava/lang/String;)V

    .line 363
    if-eqz v13, :cond_0

    .line 364
    invoke-virtual {v1, v13}, Lcom/inmobi/ads/NativeStrandAsset;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_a
    new-instance v6, Lcom/inmobi/ads/w;

    .line 358
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/x;->h(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move-object v8, v3

    move-object v11, v5

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Lcom/inmobi/ads/w;-><init>(Ljava/lang/String;Lcom/inmobi/ads/t;Ljava/lang/String;[Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v6

    goto :goto_8

    :cond_b
    move-object v13, v1

    goto :goto_7

    :cond_c
    move-object v13, v1

    goto/16 :goto_5

    :cond_d
    move-object v14, v3

    goto/16 :goto_4

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Lcom/inmobi/ads/ai$b;
    .locals 3

    .prologue
    .line 598
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 600
    sget-object v0, Lcom/inmobi/ads/ai$b;->a:Lcom/inmobi/ads/ai$b;

    .line 606
    :goto_1
    return-object v0

    .line 598
    :sswitch_0
    const-string v2, "URL_PING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "URL_WEBVIEW_PING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "HTML_SCRIPT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 602
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ai$b;->b:Lcom/inmobi/ads/ai$b;

    goto :goto_1

    .line 604
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ai$b;->c:Lcom/inmobi/ads/ai$b;

    goto :goto_1

    .line 606
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ai$b;->d:Lcom/inmobi/ads/ai$b;

    goto :goto_1

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        -0x553d2421 -> :sswitch_2
        -0x96c9d9e -> :sswitch_0
        0x42376308 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/t;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 699
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    sget-object v5, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 701
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 702
    const-string v7, "#ff000000"

    move-object v6, v0

    .line 726
    :goto_0
    const-string v0, "backgroundColor"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v8, "#00000000"

    .line 729
    :goto_1
    new-instance v0, Lcom/inmobi/ads/t;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-direct/range {v0 .. v8}, Lcom/inmobi/ads/t;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 704
    :cond_0
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 705
    const-string v0, "style"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    sget-object v5, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 707
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 708
    const-string v7, "#ff000000"

    move-object v6, v0

    goto :goto_0

    .line 710
    :cond_1
    const-string v0, "style"

    .line 711
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-direct {p0, v0}, Lcom/inmobi/ads/x;->f(Ljava/lang/String;)Lcom/inmobi/ads/t$b;

    move-result-object v5

    .line 712
    const-string v0, "corner"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 718
    :goto_2
    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 719
    const-string v7, "#ff000000"

    move-object v6, v0

    goto :goto_0

    .line 715
    :cond_2
    const-string v0, "corner"

    .line 716
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-direct {p0, v0}, Lcom/inmobi/ads/x;->g(Ljava/lang/String;)Lcom/inmobi/ads/t$a;

    move-result-object v0

    goto :goto_2

    .line 721
    :cond_3
    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v6, v0

    goto :goto_0

    .line 726
    :cond_4
    const-string v0, "backgroundColor"

    .line 728
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method private a(Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 572
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_DEEP_LINK:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    if-ne p1, v0, :cond_0

    const-string v0, "fallbackUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    const-string v0, "fallbackUrl"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/v;)Z
    .locals 2

    .prologue
    .line 176
    const-string v0, "card_container"

    invoke-virtual {p1}, Lcom/inmobi/ads/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ah$a;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 745
    const-string v1, "border"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    sget-object v6, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 747
    sget-object v1, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 748
    const-string v8, "#ff000000"

    move-object v7, v1

    .line 772
    :goto_0
    const-string v1, "backgroundColor"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v9, "#00000000"

    .line 777
    :goto_1
    const-string v1, "text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 782
    :try_start_0
    const-string v1, "size"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 792
    const-string v1, "length"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v11, 0x7fffffff

    .line 795
    :goto_2
    const-string v1, "color"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v12, "#ff000000"

    .line 799
    :goto_3
    const-string v1, "style"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 800
    const/4 v1, 0x1

    new-array v13, v1, [Lcom/inmobi/ads/ah$a$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/inmobi/ads/ah$a$a;->a:Lcom/inmobi/ads/ah$a$a;

    aput-object v2, v13, v1

    .line 816
    :cond_0
    :goto_4
    new-instance v1, Lcom/inmobi/ads/ah$a;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-direct/range {v1 .. v13}, Lcom/inmobi/ads/ah$a;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;[Lcom/inmobi/ads/ah$a$a;)V

    return-object v1

    .line 750
    :cond_1
    const-string v1, "border"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 751
    const-string v1, "style"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 752
    sget-object v6, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 753
    sget-object v1, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 754
    const-string v8, "#ff000000"

    move-object v7, v1

    goto :goto_0

    .line 756
    :cond_2
    const-string v1, "style"

    .line 757
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-direct {p0, v1}, Lcom/inmobi/ads/x;->f(Ljava/lang/String;)Lcom/inmobi/ads/t$b;

    move-result-object v6

    .line 758
    const-string v1, "corner"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    sget-object v1, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 764
    :goto_5
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 765
    const-string v8, "#ff000000"

    move-object v7, v1

    goto/16 :goto_0

    .line 761
    :cond_3
    const-string v1, "corner"

    .line 762
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 761
    invoke-direct {p0, v1}, Lcom/inmobi/ads/x;->g(Ljava/lang/String;)Lcom/inmobi/ads/t$a;

    move-result-object v1

    goto :goto_5

    .line 767
    :cond_4
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v7, v1

    goto/16 :goto_0

    .line 772
    :cond_5
    const-string v1, "backgroundColor"

    .line 774
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 783
    :catch_0
    move-exception v1

    .line 784
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    const-string v4, "Failure in building text asset! Text size should be an integer"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    new-instance v2, Lorg/json/JSONException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v2, v1}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 789
    throw v2

    .line 792
    :cond_6
    const-string v1, "length"

    .line 794
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_2

    .line 795
    :cond_7
    const-string v1, "color"

    .line 797
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 802
    :cond_8
    const-string v1, "style"

    .line 803
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 804
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 805
    if-nez v3, :cond_9

    .line 806
    const/4 v1, 0x1

    new-array v13, v1, [Lcom/inmobi/ads/ah$a$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/inmobi/ads/ah$a$a;->a:Lcom/inmobi/ads/ah$a$a;

    aput-object v2, v13, v1

    goto/16 :goto_4

    .line 808
    :cond_9
    new-array v13, v3, [Lcom/inmobi/ads/ah$a$a;

    .line 809
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_0

    .line 810
    const-string v4, "style"

    .line 811
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 812
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-direct {p0, v4}, Lcom/inmobi/ads/x;->e(Ljava/lang/String;)Lcom/inmobi/ads/ah$a$a;

    move-result-object v4

    aput-object v4, v13, v1

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private b(Ljava/lang/String;)Lcom/inmobi/ads/ai$a;
    .locals 3

    .prologue
    .line 611
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 613
    sget-object v0, Lcom/inmobi/ads/ai$a;->a:Lcom/inmobi/ads/ai$a;

    .line 623
    :goto_1
    return-object v0

    .line 611
    :sswitch_0
    const-string v2, "LOAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "CLIENT_FILL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "RENDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "CLICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 615
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a;

    goto :goto_1

    .line 617
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ai$a;->c:Lcom/inmobi/ads/ai$a;

    goto :goto_1

    .line 619
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ai$a;->d:Lcom/inmobi/ads/ai$a;

    goto :goto_1

    .line 621
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/ai$a;->e:Lcom/inmobi/ads/ai$a;

    goto :goto_1

    .line 623
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/ai$a;->f:Lcom/inmobi/ads/ai$a;

    goto :goto_1

    .line 611
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7021ca6a -> :sswitch_2
        0x23bce6 -> :sswitch_0
        0x2832a5 -> :sswitch_3
        0x3d3cd68 -> :sswitch_4
        0x77b5e577 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/x;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-direct {p0, p1}, Lcom/inmobi/ads/x;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "assetValue"

    .line 493
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    :goto_0
    return-object v0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 499
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;
    .locals 3

    .prologue
    .line 628
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 631
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    .line 635
    :goto_1
    return-object v0

    .line 628
    :sswitch_0
    const-string v2, "EXTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "INAPP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "DEEPLINK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 633
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_IN_APP:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    goto :goto_1

    .line 635
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;->ASSET_INTERACTION_MODE_DEEP_LINK:Lcom/inmobi/ads/NativeStrandAsset$AssetInteractionMode;

    goto :goto_1

    .line 628
    :sswitch_data_0
    .sparse-switch
        -0x3de0ac35 -> :sswitch_0
        0x42926bc -> :sswitch_1
        0x542746e6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ah$a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 829
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    sget-object v5, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 831
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 832
    const-string v7, "#ff000000"

    move-object v6, v0

    .line 856
    :goto_0
    const-string v0, "backgroundColor"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v8, "#00000000"

    .line 861
    :goto_1
    const-string v0, "text"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 866
    :try_start_0
    const-string v0, "size"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 875
    const-string v0, "color"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v10, "#ff000000"

    .line 880
    :goto_2
    const-string v0, "style"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 881
    new-array v11, v4, [Lcom/inmobi/ads/ah$a$a;

    sget-object v0, Lcom/inmobi/ads/ah$a$a;->a:Lcom/inmobi/ads/ah$a$a;

    aput-object v0, v11, v1

    .line 897
    :cond_0
    :goto_3
    new-instance v0, Lcom/inmobi/ads/w$a;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-direct/range {v0 .. v11}, Lcom/inmobi/ads/w$a;-><init>(IIIILcom/inmobi/ads/t$b;Lcom/inmobi/ads/t$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/ah$a$a;)V

    return-object v0

    .line 834
    :cond_1
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 835
    const-string v0, "style"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    sget-object v5, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 837
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 838
    const-string v7, "#ff000000"

    move-object v6, v0

    goto :goto_0

    .line 840
    :cond_2
    const-string v0, "style"

    .line 841
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 840
    invoke-direct {p0, v0}, Lcom/inmobi/ads/x;->f(Ljava/lang/String;)Lcom/inmobi/ads/t$b;

    move-result-object v5

    .line 842
    const-string v0, "corner"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 843
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 848
    :goto_4
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 849
    const-string v7, "#ff000000"

    move-object v6, v0

    goto :goto_0

    .line 845
    :cond_3
    const-string v0, "corner"

    .line 846
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-direct {p0, v0}, Lcom/inmobi/ads/x;->g(Ljava/lang/String;)Lcom/inmobi/ads/t$a;

    move-result-object v0

    goto :goto_4

    .line 851
    :cond_4
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v6, v0

    goto/16 :goto_0

    .line 856
    :cond_5
    const-string v0, "backgroundColor"

    .line 858
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    const-string v3, "Failure in building text asset! Text size should be an integer"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v1, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v1, v0}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 873
    throw v1

    .line 875
    :cond_6
    const-string v0, "color"

    .line 877
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 883
    :cond_7
    const-string v0, "style"

    .line 884
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 885
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 886
    if-nez v3, :cond_8

    .line 887
    new-array v11, v4, [Lcom/inmobi/ads/ah$a$a;

    sget-object v0, Lcom/inmobi/ads/ah$a$a;->a:Lcom/inmobi/ads/ah$a$a;

    aput-object v0, v11, v1

    goto/16 :goto_3

    .line 889
    :cond_8
    new-array v11, v3, [Lcom/inmobi/ads/ah$a$a;

    move v0, v1

    .line 890
    :goto_5
    if-ge v0, v3, :cond_0

    .line 891
    const-string v1, "style"

    .line 892
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 893
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 891
    invoke-direct {p0, v1}, Lcom/inmobi/ads/x;->e(Ljava/lang/String;)Lcom/inmobi/ads/ah$a$a;

    move-result-object v1

    aput-object v1, v11, v0

    .line 890
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private c(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    :try_start_0
    const-string v0, "assetName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 507
    const-string v0, ""

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset$AssetType;
    .locals 3

    .prologue
    .line 640
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 643
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    .line 653
    :goto_1
    return-object v0

    .line 640
    :sswitch_0
    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "cta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "rating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 645
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    goto :goto_1

    .line 647
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    goto :goto_1

    .line 649
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    goto :goto_1

    .line 651
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    goto :goto_1

    .line 653
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    goto :goto_1

    .line 640
    nop

    :sswitch_data_0
    .sparse-switch
        -0x37ea4e63 -> :sswitch_5
        -0x187eb37f -> :sswitch_0
        0x18210 -> :sswitch_4
        0x313c79 -> :sswitch_1
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    :try_start_0
    const-string v0, "assetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 516
    const-string v0, ""

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/inmobi/ads/ah$a$a;
    .locals 3

    .prologue
    .line 658
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 661
    sget-object v0, Lcom/inmobi/ads/ah$a$a;->a:Lcom/inmobi/ads/ah$a$a;

    .line 669
    :goto_1
    return-object v0

    .line 658
    :sswitch_0
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "bold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "italic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "strike"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "underline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 663
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ah$a$a;->b:Lcom/inmobi/ads/ah$a$a;

    goto :goto_1

    .line 665
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ah$a$a;->c:Lcom/inmobi/ads/ah$a$a;

    goto :goto_1

    .line 667
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ah$a$a;->d:Lcom/inmobi/ads/ah$a$a;

    goto :goto_1

    .line 669
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/ah$a$a;->e:Lcom/inmobi/ads/ah$a$a;

    goto :goto_1

    .line 658
    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_2
        -0x3d363934 -> :sswitch_4
        -0x352aa04e -> :sswitch_3
        0x2e3a85 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 522
    :try_start_0
    const-string v0, "assetStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 524
    :goto_0
    if-nez v0, :cond_0

    .line 525
    const-string v0, "assetStyleRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 536
    :cond_0
    :goto_1
    return-object v0

    .line 522
    :cond_1
    const-string v0, "assetStyle"

    .line 523
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_2
    const-string v0, "assetStyleRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-virtual {p0}, Lcom/inmobi/ads/x;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 536
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1
.end method

.method private f(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 541
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 543
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/x;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 544
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    :goto_0
    return-object v0

    .line 546
    :cond_0
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 547
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/x;->b(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 548
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/x;->b(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/inmobi/ads/t$b;
    .locals 3

    .prologue
    .line 674
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 677
    sget-object v0, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 679
    :goto_1
    return-object v0

    .line 674
    :sswitch_0
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 679
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/t$b;->b:Lcom/inmobi/ads/t$b;

    goto :goto_1

    .line 674
    nop

    :sswitch_data_0
    .sparse-switch
        0x32aff4 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private g(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 556
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 558
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/x;->e(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 559
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 567
    :goto_0
    return-object v0

    .line 561
    :cond_0
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 562
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/x;->b(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 563
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/x;->b(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v1

    .line 565
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/inmobi/ads/t$a;
    .locals 3

    .prologue
    .line 684
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 687
    sget-object v0, Lcom/inmobi/ads/t$a;->b:Lcom/inmobi/ads/t$a;

    .line 689
    :goto_1
    return-object v0

    .line 684
    :sswitch_0
    const-string v2, "straight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "curved"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 689
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/t$a;->a:Lcom/inmobi/ads/t$a;

    goto :goto_1

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069e2ab -> :sswitch_1
        0x6a8aaafa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private h(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 585
    :try_start_0
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    .line 586
    :catch_0
    move-exception v0

    .line 587
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 590
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method private i(Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 594
    const-string v0, "assetOnclick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/inmobi/ads/v;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    return-object v0
.end method

.method public a(I)Lcom/inmobi/ads/v;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Lcom/inmobi/ads/v;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAsset;

    .line 141
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAsset;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_scrollable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 142
    check-cast v1, Lcom/inmobi/ads/v;

    invoke-virtual {v1}, Lcom/inmobi/ads/v;->n()I

    move-result v1

    if-lt p1, v1, :cond_1

    move-object v0, v2

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_1
    check-cast v0, Lcom/inmobi/ads/v;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/v;->a(I)Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/v;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 146
    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/NativeStrandAsset;)Lcom/inmobi/ads/v;
    .locals 1

    .prologue
    .line 152
    instance-of v0, p1, Lcom/inmobi/ads/v;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/v;

    .line 153
    invoke-direct {p0, v0}, Lcom/inmobi/ads/x;->a(Lcom/inmobi/ads/v;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    check-cast p1, Lcom/inmobi/ads/v;

    .line 164
    :cond_0
    :goto_0
    return-object p1

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAsset;->k()Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/v;

    move-object p1, v0

    .line 158
    :goto_1
    if-eqz p1, :cond_2

    .line 159
    invoke-direct {p0, p1}, Lcom/inmobi/ads/x;->a(Lcom/inmobi/ads/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/inmobi/ads/v;->k()Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/v;

    move-object p1, v0

    goto :goto_1

    .line 164
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method a(Lorg/json/JSONArray;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 416
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/utilities/info/c;->b()I

    move-result v3

    .line 418
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 419
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 420
    if-ltz v2, :cond_0

    if-ltz v4, :cond_0

    if-gt v2, v3, :cond_0

    move v2, v0

    .line 421
    :goto_0
    if-nez v2, :cond_1

    .line 428
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 420
    goto :goto_0

    .line 423
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 424
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 425
    if-ltz v2, :cond_2

    if-ltz v4, :cond_2

    if-gt v2, v3, :cond_2

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 426
    :catch_0
    move-exception v0

    .line 427
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeStrandAsset$AssetType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 379
    const-string v2, "geometry"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 382
    :cond_1
    :try_start_0
    const-string v2, "geometry"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 383
    invoke-virtual {p0, v2}, Lcom/inmobi/ads/x;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    sget-object v2, Lcom/inmobi/ads/x$1;->a:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v1, v0

    .line 392
    goto :goto_0

    .line 395
    :pswitch_2
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 399
    :try_start_1
    const-string v3, "size"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 406
    if-lez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    :try_start_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    const-string v3, "Failure in validating text asset! Text size should be an integer"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 408
    :catch_1
    move-exception v0

    .line 409
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 406
    goto :goto_1

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Lorg/json/JSONObject;)[Lcom/inmobi/ads/ai;
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 434
    const-string v1, "trackers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    .line 435
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :try_start_0
    const-string v1, "trackers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 438
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 439
    if-nez v4, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/inmobi/ads/ai;

    goto :goto_0

    :cond_1
    move v1, v0

    .line 441
    :goto_1
    if-ge v1, v4, :cond_5

    .line 442
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 444
    const-string v5, "trackerType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 441
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 445
    :cond_3
    const-string v5, "trackerType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-direct {p0, v5}, Lcom/inmobi/ads/x;->a(Ljava/lang/String;)Lcom/inmobi/ads/ai$b;

    move-result-object v5

    .line 448
    sget-object v6, Lcom/inmobi/ads/ai$b;->b:Lcom/inmobi/ads/ai$b;

    if-ne v6, v5, :cond_2

    .line 450
    const-string v5, "url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 451
    const-string v5, "url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 452
    invoke-static {v5}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    const-string v6, "eventId"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 456
    const-string v7, "uiEvent"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 457
    const-string v7, "uiEvent"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 458
    invoke-direct {p0, v7}, Lcom/inmobi/ads/x;->b(Ljava/lang/String;)Lcom/inmobi/ads/ai$a;

    move-result-object v7

    .line 459
    sget-object v8, Lcom/inmobi/ads/ai$a;->a:Lcom/inmobi/ads/ai$a;

    if-eq v8, v7, :cond_2

    .line 461
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 462
    const-string v9, "params"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_4

    .line 465
    :try_start_1
    const-string v9, "params"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 466
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 467
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 468
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 470
    invoke-interface {v8, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 472
    :catch_0
    move-exception v0

    .line 473
    :try_start_2
    sget-object v9, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v10, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    const-string v11, "Failed to parser tracker.params"

    invoke-static {v9, v10, v11, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    :cond_4
    new-instance v0, Lcom/inmobi/ads/ai;

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/inmobi/ads/ai;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ai$a;Ljava/util/Map;)V

    .line 479
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 483
    :catch_1
    move-exception v0

    .line 484
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 485
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/inmobi/ads/ai;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ai;

    goto/16 :goto_0

    .line 482
    :cond_5
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/inmobi/ads/ai;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ai;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method b(I)I
    .locals 1

    .prologue
    .line 580
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/inmobi/ads/x;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Lcom/inmobi/ads/v;
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Lcom/inmobi/ads/v;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAsset;

    .line 117
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAsset;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "card_scrollable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    check-cast v0, Lcom/inmobi/ads/v;

    .line 121
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    if-nez v0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Lcom/inmobi/ads/v;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAsset;

    .line 129
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAsset;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_scrollable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    check-cast v0, Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Lcom/inmobi/ads/v;->n()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Lcom/inmobi/ads/v;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Lcom/inmobi/ads/v;->b()Lcom/inmobi/ads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method g()V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/x;->b:Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/x;->c:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/inmobi/ads/x;->b:Lorg/json/JSONObject;

    const-string v1, "styleRefs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/x;->d:Lorg/json/JSONObject;

    .line 184
    iget-object v0, p0, Lcom/inmobi/ads/x;->b:Lorg/json/JSONObject;

    const-string v1, "rootContainer"

    .line 185
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeStrandAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeStrandAsset$AssetType;

    const-string v2, "/rootContainer"

    .line 184
    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/x;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeStrandAsset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/v;

    iput-object v0, p0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/v;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method h()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/inmobi/ads/x;->a()Lcom/inmobi/ads/v;

    move-result-object v2

    if-nez v2, :cond_0

    .line 203
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    const-string v3, "Invalid Data Model: No Root Container"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/x;->c()Lcom/inmobi/ads/v;

    move-result-object v2

    .line 207
    if-nez v2, :cond_1

    .line 208
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    const-string v3, "No Card Scrollable in the data model"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 209
    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/x;->d()I

    move-result v2

    if-gtz v2, :cond_2

    .line 212
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/x;->a:Ljava/lang/String;

    const-string v3, "Invalid Data Model: No Cards in Card Scrollable"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 216
    goto :goto_0
.end method
