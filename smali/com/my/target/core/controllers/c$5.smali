.class final Lcom/my/target/core/controllers/c$5;
.super Ljava/lang/Object;
.source "NativeAdVideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/core/controllers/c;->a(Lcom/my/target/nativeads/views/MediaAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/controllers/c;


# direct methods
.method constructor <init>(Lcom/my/target/core/controllers/c;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/my/target/core/controllers/c$5;->a:Lcom/my/target/core/controllers/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/my/target/core/controllers/c$5;->a:Lcom/my/target/core/controllers/c;

    invoke-static {v0}, Lcom/my/target/core/controllers/c;->p(Lcom/my/target/core/controllers/c;)V

    .line 285
    return-void
.end method
