.class Lcom/perm/kate/NewGroupTopicActivity$6;
.super Ljava/lang/Object;
.source "NewGroupTopicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewGroupTopicActivity;->finishOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupTopicActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$6;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/perm/kate/NewGroupTopicActivity$6;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
