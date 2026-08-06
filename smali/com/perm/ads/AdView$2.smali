.class Lcom/perm/ads/AdView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/ads/AdView;->displayAdOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/ads/AdView;


# direct methods
.method constructor <init>(Lcom/perm/ads/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/perm/ads/AdView$2;->this$0:Lcom/perm/ads/AdView;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/ads/AdView$2;->this$0:Lcom/perm/ads/AdView;

    invoke-static {v0}, Lcom/perm/ads/AdView;->access$1(Lcom/perm/ads/AdView;)V

    .line 67
    return-void
.end method
