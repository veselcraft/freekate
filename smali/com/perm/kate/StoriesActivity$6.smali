.class Lcom/perm/kate/StoriesActivity$6;
.super Ljava/lang/Object;
.source "StoriesActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/StoryUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StoriesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StoriesActivity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$6;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/Story;)V
    .locals 0

    .line 250
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$6;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$6;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-static {p1}, Lcom/perm/kate/StoriesActivity;->access$400(Lcom/perm/kate/StoriesActivity;)V

    return-void
.end method
