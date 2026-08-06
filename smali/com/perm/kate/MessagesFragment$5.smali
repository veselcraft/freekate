.class Lcom/perm/kate/MessagesFragment$5;
.super Lcom/perm/kate/session/Callback;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$5;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 205
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 210
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    .line 211
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment$5;->this$0:Lcom/perm/kate/MessagesFragment;

    invoke-static {v1}, Lcom/perm/kate/MessagesFragment;->access$300(Lcom/perm/kate/MessagesFragment;)V

    .line 212
    return-void
.end method
