.class public Lcom/perm/kate/NewsCommentsActivity$MyAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "NewsCommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsCommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/NewsCommentsActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsActivity;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    .line 76
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 86
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    iget-object v1, v1, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 87
    .local v0, "tab":Lcom/perm/kate/tabs/TabInfo;
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "All"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Lcom/perm/kate/NotificationsFragment;

    invoke-direct {v1}, Lcom/perm/kate/NotificationsFragment;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    .line 90
    :goto_0
    return-object v1

    .line 89
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v2, "Online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    new-instance v1, Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {v1}, Lcom/perm/kate/NewsCommentsFragment;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
