.class final Lcom/my/target/core/engines/f$2;
.super Ljava/lang/Object;
.source "FSSliderAppwallAdEngine.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/engines/f;-><init>(Lcom/my/target/core/facades/f;Landroid/view/ViewGroup;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/f;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/f;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/my/target/core/engines/f$2;->a:Lcom/my/target/core/engines/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/my/target/core/engines/f$2;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/core/engines/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/my/target/core/engines/f$2;->a:Lcom/my/target/core/engines/f;

    invoke-static {v0}, Lcom/my/target/core/engines/f;->c(Lcom/my/target/core/engines/f;)Lcom/my/target/core/engines/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/engines/b$a;->onCloseClick()V

    .line 72
    :cond_0
    return-void
.end method
