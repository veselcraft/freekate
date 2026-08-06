.class Lcom/my/target/nativeads/NativeAppwallAd$4;
.super Ljava/lang/Object;
.source "NativeAppwallAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/NativeAppwallAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/nativeads/NativeAppwallAd;


# direct methods
.method constructor <init>(Lcom/my/target/nativeads/NativeAppwallAd;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd$4;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not registered with AppwallAd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd$4;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v1}, Lcom/my/target/nativeads/NativeAppwallAd;->access$400(Lcom/my/target/nativeads/NativeAppwallAd;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/nativeads/banners/NativeAppwallBanner;

    .line 127
    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd$4;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v1, v0}, Lcom/my/target/nativeads/NativeAppwallAd;->access$000(Lcom/my/target/nativeads/NativeAppwallAd;Lcom/my/target/nativeads/banners/NativeAppwallBanner;)V

    goto :goto_0
.end method
