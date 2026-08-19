.class Lcom/perm/kate/BlackListActivity$9;
.super Ljava/lang/Thread;
.source "BlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$add_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JLcom/perm/kate/session/Callback;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 221
    iput-wide p1, p0, Lcom/perm/kate/BlackListActivity$9;->val$uid:J

    iput-object p3, p0, Lcom/perm/kate/BlackListActivity$9;->val$add_callback:Lcom/perm/kate/session/Callback;

    iput-object p4, p0, Lcom/perm/kate/BlackListActivity$9;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 224
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/BlackListActivity$9;->val$uid:J

    iget-object v3, p0, Lcom/perm/kate/BlackListActivity$9;->val$add_callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/BlackListActivity$9;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->deleteFromBlackList(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
