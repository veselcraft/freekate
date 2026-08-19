.class Lcom/perm/kate/GroupBannedActivity$4;
.super Ljava/lang/Object;
.source "GroupBannedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupBannedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$4;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$4;->this$0:Lcom/perm/kate/GroupBannedActivity;

    new-instance v1, Lcom/perm/kate/GroupBannedAdapter;

    iget-object v2, p0, Lcom/perm/kate/GroupBannedActivity$4;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v2}, Lcom/perm/kate/GroupBannedActivity;->access$200(Lcom/perm/kate/GroupBannedActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/GroupBannedAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->access$702(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/GroupBannedAdapter;)Lcom/perm/kate/GroupBannedAdapter;

    .line 149
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$4;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$800(Lcom/perm/kate/GroupBannedActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$4;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0}, Lcom/perm/kate/GroupBannedActivity;->access$800(Lcom/perm/kate/GroupBannedActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$4;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupBannedActivity;->access$700(Lcom/perm/kate/GroupBannedActivity;)Lcom/perm/kate/GroupBannedAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
