.class final enum Lcom/yandex/mobile/ads/AdResources$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/AdResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/AdResources$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/mobile/ads/AdResources$f;

.field public static final enum b:Lcom/yandex/mobile/ads/AdResources$f;

.field public static final enum c:Lcom/yandex/mobile/ads/AdResources$f;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lcom/yandex/mobile/ads/AdResources$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/yandex/mobile/ads/AdResources$f;

    const-string v1, "BROWSER_CONTROL_PANEL_HEIGHT"

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/AdResources$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/AdResources$f;->a:Lcom/yandex/mobile/ads/AdResources$f;

    .line 72
    new-instance v0, Lcom/yandex/mobile/ads/AdResources$f;

    const-string v1, "BROWSER_CONTROL_PANEL_BUTTON_PADDING"

    invoke-direct {v0, v1, v3}, Lcom/yandex/mobile/ads/AdResources$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/AdResources$f;->b:Lcom/yandex/mobile/ads/AdResources$f;

    .line 73
    new-instance v0, Lcom/yandex/mobile/ads/AdResources$f;

    const-string v1, "BROWSER_CONTROL_PANEL_TITLE_TEXT_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/yandex/mobile/ads/AdResources$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/AdResources$f;->c:Lcom/yandex/mobile/ads/AdResources$f;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/mobile/ads/AdResources$f;

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->a:Lcom/yandex/mobile/ads/AdResources$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->b:Lcom/yandex/mobile/ads/AdResources$f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->c:Lcom/yandex/mobile/ads/AdResources$f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/mobile/ads/AdResources$f;->e:[Lcom/yandex/mobile/ads/AdResources$f;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    sput-object v0, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->a:Lcom/yandex/mobile/ads/AdResources$f;

    const-string v2, "values_dimen_%s"

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->a:Lcom/yandex/mobile/ads/AdResources$f;

    const-string v2, "values_dimen_%s_sw600dp"

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->b:Lcom/yandex/mobile/ads/AdResources$f;

    const-string v2, "values_dimen_%s"

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->b:Lcom/yandex/mobile/ads/AdResources$f;

    const-string v2, "values_dimen_%s_sw600dp"

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->c:Lcom/yandex/mobile/ads/AdResources$f;

    const-string v2, "values_dimen_%s"

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->c:Lcom/yandex/mobile/ads/AdResources$f;

    const-string v2, "values_dimen_%s_sw600dp"

    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/AdResources$f;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/yandex/mobile/ads/AdResources$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/AdResources$f;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/AdResources$f;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/yandex/mobile/ads/AdResources$f;->e:[Lcom/yandex/mobile/ads/AdResources$f;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/AdResources$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/AdResources$f;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/k;->f(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_0

    .line 91
    const-string v1, "_sw600dp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$f;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/AdResources$f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "values_dimen_%s"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 130
    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 121
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$f;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "values_dimen_%s"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/AdResources$f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/yandex/mobile/ads/AdResources$f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/AdResources$f;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/AdResources$f;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
