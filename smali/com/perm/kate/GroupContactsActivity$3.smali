.class Lcom/perm/kate/GroupContactsActivity$3;
.super Ljava/lang/Object;
.source "GroupContactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupContactsActivity;->displayDataInUI(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupContactsActivity;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/perm/kate/GroupContactsActivity$3;->this$0:Lcom/perm/kate/GroupContactsActivity;

    iput-object p2, p0, Lcom/perm/kate/GroupContactsActivity$3;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/perm/kate/GroupContactsActivity$3;->this$0:Lcom/perm/kate/GroupContactsActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupContactsActivity$3;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupContactsActivity;->access$400(Lcom/perm/kate/GroupContactsActivity;Ljava/util/ArrayList;)V

    return-void
.end method
