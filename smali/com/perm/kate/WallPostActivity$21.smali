.class Lcom/perm/kate/WallPostActivity$21;
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

    .line 1192
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$21;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1195
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$21;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/WallPostActivity;->access$702(Lcom/perm/kate/WallPostActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 1196
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$21;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1}, Lcom/perm/kate/WallPostActivity;->access$4000(Lcom/perm/kate/WallPostActivity;)V

    return-void
.end method
