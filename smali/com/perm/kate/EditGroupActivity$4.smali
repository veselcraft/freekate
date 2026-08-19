.class Lcom/perm/kate/EditGroupActivity$4;
.super Ljava/lang/Object;
.source "EditGroupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditGroupActivity;->displaySettingsInUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupActivity;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/perm/kate/EditGroupActivity$4;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/perm/kate/EditGroupActivity$4;->this$0:Lcom/perm/kate/EditGroupActivity;

    invoke-static {v0}, Lcom/perm/kate/EditGroupActivity;->access$1000(Lcom/perm/kate/EditGroupActivity;)V

    return-void
.end method
