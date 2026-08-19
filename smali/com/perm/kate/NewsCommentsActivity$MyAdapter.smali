.class public Lcom/perm/kate/NewsCommentsActivity$MyAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
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
.method public constructor <init>(Lcom/perm/kate/NewsCommentsActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    .line 76
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0}, Lcom/perm/kate/tabs/TabsInfo;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsActivity$MyAdapter;->this$0:Lcom/perm/kate/NewsCommentsActivity;

    iget-object v0, v0, Lcom/perm/kate/NewsCommentsActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v0, p1}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object p1

    .line 87
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "All"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/perm/kate/NotificationsFragment;

    invoke-direct {v0}, Lcom/perm/kate/NotificationsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->id:Ljava/lang/String;

    const-string v1, "Online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Lcom/perm/kate/NewsCommentsFragment;

    invoke-direct {v0}, Lcom/perm/kate/NewsCommentsFragment;-><init>()V

    iput-object v0, p1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    return-object v0

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
