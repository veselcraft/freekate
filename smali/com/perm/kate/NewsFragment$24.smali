.class Lcom/perm/kate/NewsFragment$24;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$24;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 1159
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$24;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/NewsFragment;->access$1702(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    return-void
.end method
