.class Lcom/perm/kate/StoriesActivity$8;
.super Lcom/perm/kate/session/Callback;
.source "StoriesActivity.java"


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
.method constructor <init>(Lcom/perm/kate/StoriesActivity;Landroid/app/Activity;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity$8;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 0

    .line 325
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity$8;->this$0:Lcom/perm/kate/StoriesActivity;

    invoke-static {p1}, Lcom/perm/kate/StoriesActivity;->access$400(Lcom/perm/kate/StoriesActivity;)V

    return-void
.end method
