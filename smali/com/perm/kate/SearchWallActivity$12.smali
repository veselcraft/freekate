.class Lcom/perm/kate/SearchWallActivity$12;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Lcom/perm/utils/RepostHelper$RepostCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$12;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/perm/kate/api/WallMessage;)V
    .locals 0

    .line 456
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$12;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchWallActivity;->access$1900(Lcom/perm/kate/SearchWallActivity;)V

    return-void
.end method
