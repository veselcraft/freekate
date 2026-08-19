.class Lcom/flurry/sdk/da$2;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/da;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/da;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/da;I)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/flurry/sdk/da$2;->b:Lcom/flurry/sdk/da;

    iput p2, p0, Lcom/flurry/sdk/da$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 162
    iget v0, p0, Lcom/flurry/sdk/da$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 163
    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/flurry/sdk/dg;->b()V

    :cond_0
    return-void
.end method
