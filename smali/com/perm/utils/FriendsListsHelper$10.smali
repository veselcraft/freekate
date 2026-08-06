.class final Lcom/perm/utils/FriendsListsHelper$10;
.super Lcom/perm/kate/session/Callback;
.source "FriendsListsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/FriendsListsHelper;->checkFriendsLists(Lcom/perm/kate/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 265
    iput-object p2, p0, Lcom/perm/utils/FriendsListsHelper$10;->val$mid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 275
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 269
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {p1}, Lcom/perm/utils/FriendsListsHelper;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 270
    iget-object v0, p0, Lcom/perm/utils/FriendsListsHelper$10;->val$mid:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/utils/FriendsListsHelper;->access$602(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    return-void
.end method
