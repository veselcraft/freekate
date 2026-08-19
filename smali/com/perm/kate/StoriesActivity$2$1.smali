.class Lcom/perm/kate/StoriesActivity$2$1;
.super Ljava/lang/Object;
.source "StoriesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/StoriesActivity$2;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/StoriesActivity$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity$2;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$2$1;->this$1:Lcom/perm/kate/StoriesActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity$2$1;->this$1:Lcom/perm/kate/StoriesActivity$2;

    iget-object v0, v0, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    new-instance v1, Lcom/perm/kate/StoriesAdapter;

    iget-object v2, p0, Lcom/perm/kate/StoriesActivity$2$1;->this$1:Lcom/perm/kate/StoriesActivity$2;

    iget-object v2, v2, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    iget-object v3, v2, Lcom/perm/kate/StoriesActivity;->games:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v2}, Lcom/perm/kate/StoriesAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/perm/kate/StoriesActivity;->access$102(Lcom/perm/kate/StoriesActivity;Lcom/perm/kate/StoriesAdapter;)Lcom/perm/kate/StoriesAdapter;

    .line 77
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity$2$1;->this$1:Lcom/perm/kate/StoriesActivity$2;

    iget-object v0, v0, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-static {v0}, Lcom/perm/kate/StoriesActivity;->access$200(Lcom/perm/kate/StoriesActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/StoriesActivity$2$1;->this$1:Lcom/perm/kate/StoriesActivity$2;

    iget-object v1, v1, Lcom/perm/kate/StoriesActivity$2;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-static {v1}, Lcom/perm/kate/StoriesActivity;->access$100(Lcom/perm/kate/StoriesActivity;)Lcom/perm/kate/StoriesAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
