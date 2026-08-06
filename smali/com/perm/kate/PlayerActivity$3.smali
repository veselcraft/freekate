.class Lcom/perm/kate/PlayerActivity$3;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$3;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$3;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$300(Lcom/perm/kate/PlayerActivity;)V

    .line 210
    return-void
.end method
