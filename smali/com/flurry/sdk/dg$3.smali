.class Lcom/flurry/sdk/dg$3;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/dg;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dg;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/dg;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/flurry/sdk/dg$3;->a:Lcom/flurry/sdk/dg;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/flurry/sdk/dg$3;->a:Lcom/flurry/sdk/dg;

    invoke-static {}, Lcom/flurry/sdk/dx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/dg;->a(Lcom/flurry/sdk/dg;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
