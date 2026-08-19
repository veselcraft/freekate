.class Lcom/perm/kate/SearchWallActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$4;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 200
    check-cast p1, Ljava/util/ArrayList;

    .line 201
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$4;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/perm/kate/SearchWallActivity;->access$700(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Z)V

    .line 202
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$4;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
