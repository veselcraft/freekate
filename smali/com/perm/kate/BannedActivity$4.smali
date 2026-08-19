.class Lcom/perm/kate/BannedActivity$4;
.super Ljava/lang/Object;
.source "BannedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BannedActivity;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BannedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$4;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$4;->this$0:Lcom/perm/kate/BannedActivity;

    new-instance v1, Lcom/perm/kate/BannedAdapter;

    iget-object v2, p0, Lcom/perm/kate/BannedActivity$4;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v2}, Lcom/perm/kate/BannedActivity;->access$200(Lcom/perm/kate/BannedActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/BannedAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/perm/kate/BannedActivity;->access$502(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/BannedAdapter;)Lcom/perm/kate/BannedAdapter;

    .line 147
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$4;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v0}, Lcom/perm/kate/BannedActivity;->access$600(Lcom/perm/kate/BannedActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$4;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v0}, Lcom/perm/kate/BannedActivity;->access$600(Lcom/perm/kate/BannedActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/BannedActivity$4;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v1}, Lcom/perm/kate/BannedActivity;->access$500(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/BannedAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
