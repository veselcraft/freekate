.class Lcom/flurry/sdk/cd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cd;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/cd;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cd;I)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/flurry/sdk/cd$2;->b:Lcom/flurry/sdk/cd;

    iput p2, p0, Lcom/flurry/sdk/cd$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/flurry/sdk/cd$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 166
    invoke-static {}, Lcom/flurry/sdk/bx;->a()Lcom/flurry/sdk/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bx;->h()Lcom/flurry/sdk/cl;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/flurry/sdk/cl;->b()V

    .line 173
    :cond_0
    return-void
.end method
