.class Lcom/my/target/nativeads/NativeAppwallAd$3;
.super Ljava/lang/Object;
.source "NativeAppwallAd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 101
    iput-object p1, p0, Lcom/my/target/nativeads/NativeAppwallAd$3;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    check-cast p1, Lcom/my/target/core/ui/a;

    .line 106
    invoke-virtual {p1, v1}, Lcom/my/target/core/ui/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 107
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$3;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->access$200(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/core/ui/a;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$3;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v0, v1}, Lcom/my/target/nativeads/NativeAppwallAd;->access$202(Lcom/my/target/nativeads/NativeAppwallAd;Lcom/my/target/core/ui/a;)Lcom/my/target/core/ui/a;

    .line 110
    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$3;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->access$300(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/my/target/nativeads/NativeAppwallAd$3;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-static {v0}, Lcom/my/target/nativeads/NativeAppwallAd;->access$300(Lcom/my/target/nativeads/NativeAppwallAd;)Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/NativeAppwallAd$3;->this$0:Lcom/my/target/nativeads/NativeAppwallAd;

    invoke-interface {v0, v1}, Lcom/my/target/nativeads/NativeAppwallAd$AppwallAdListener;->onDismissDialog(Lcom/my/target/nativeads/NativeAppwallAd;)V

    .line 112
    :cond_0
    return-void
.end method
