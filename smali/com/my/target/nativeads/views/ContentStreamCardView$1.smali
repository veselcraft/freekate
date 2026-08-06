.class Lcom/my/target/nativeads/views/ContentStreamCardView$1;
.super Ljava/lang/Object;
.source "ContentStreamCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/nativeads/views/ContentStreamCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/my/target/nativeads/views/ContentStreamCardView;


# direct methods
.method constructor <init>(Lcom/my/target/nativeads/views/ContentStreamCardView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/my/target/nativeads/views/ContentStreamCardView$1;->this$0:Lcom/my/target/nativeads/views/ContentStreamCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentStreamCardView$1;->this$0:Lcom/my/target/nativeads/views/ContentStreamCardView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/ContentStreamCardView;->access$000(Lcom/my/target/nativeads/views/ContentStreamCardView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/my/target/nativeads/views/ContentStreamCardView$1;->this$0:Lcom/my/target/nativeads/views/ContentStreamCardView;

    invoke-static {v0}, Lcom/my/target/nativeads/views/ContentStreamCardView;->access$000(Lcom/my/target/nativeads/views/ContentStreamCardView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/my/target/nativeads/views/ContentStreamCardView$1;->this$0:Lcom/my/target/nativeads/views/ContentStreamCardView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 181
    :cond_0
    return-void
.end method
