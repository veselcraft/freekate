.class Lcom/perm/kate/WallPostActivity$10;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$10;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$10;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->showDialog(I)V

    .line 799
    return-void
.end method
