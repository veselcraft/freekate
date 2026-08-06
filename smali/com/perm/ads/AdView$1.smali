.class Lcom/perm/ads/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/ads/AdView;
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
    iput-object p1, p0, Lcom/perm/ads/AdView$1;->this$0:Lcom/perm/ads/AdView;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/perm/ads/AdView$1;->this$0:Lcom/perm/ads/AdView;

    invoke-static {v0}, Lcom/perm/ads/AdView;->access$0(Lcom/perm/ads/AdView;)V

    .line 134
    return-void
.end method
