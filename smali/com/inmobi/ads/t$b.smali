.class final enum Lcom/inmobi/ads/t$b;
.super Ljava/lang/Enum;
.source "NativeStrandAssetStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/t$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/t$b;

.field public static final enum b:Lcom/inmobi/ads/t$b;

.field private static final synthetic d:[Lcom/inmobi/ads/t$b;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/inmobi/ads/t$b;

    const-string v1, "BORDER_STROKE_STYLE_NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    .line 24
    new-instance v0, Lcom/inmobi/ads/t$b;

    const-string v1, "BORDER_STROKE_STYLE_LINE"

    const-string v2, "line"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/t$b;->b:Lcom/inmobi/ads/t$b;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/ads/t$b;

    sget-object v1, Lcom/inmobi/ads/t$b;->a:Lcom/inmobi/ads/t$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/t$b;->b:Lcom/inmobi/ads/t$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/t$b;->d:[Lcom/inmobi/ads/t$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/inmobi/ads/t$b;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/t$b;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/inmobi/ads/t$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t$b;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/t$b;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/inmobi/ads/t$b;->d:[Lcom/inmobi/ads/t$b;

    invoke-virtual {v0}, [Lcom/inmobi/ads/t$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/t$b;

    return-object v0
.end method
