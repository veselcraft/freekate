.class Lcom/perm/kate/PhotosActivity$10;
.super Lcom/perm/kate/session/Callback;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$10;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 498
    return-void
.end method
