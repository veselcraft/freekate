.class final Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView$1;
.super Ljava/lang/Object;
.source "FSPromoFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 113
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://target.my.com/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;

    invoke-virtual {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 116
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView$1;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;

    invoke-virtual {v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
