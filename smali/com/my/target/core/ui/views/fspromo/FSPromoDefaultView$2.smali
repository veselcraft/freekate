.class final Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;
.super Ljava/lang/Object;
.source "FSPromoDefaultView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->b(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView$2;->a:Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;

    invoke-static {v3}, Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;->a(Lcom/my/target/core/ui/views/fspromo/FSPromoDefaultView;)Lcom/my/target/core/ui/views/controls/IconButton;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/my/target/core/ui/views/fspromo/FSPromoPanelView;->a([Landroid/view/View;)V

    .line 260
    return-void
.end method
