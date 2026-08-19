.class Lcom/perm/utils/FriendsListsHelper$10;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsHelper.java"


# instance fields
.field final synthetic val$mid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$10;->val$mid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 273
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 269
    iget-object p1, p0, Lcom/perm/utils/FriendsListsHelper$10;->val$mid:Ljava/lang/String;

    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
