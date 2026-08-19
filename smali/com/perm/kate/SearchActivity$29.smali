.class Lcom/perm/kate/SearchActivity$29;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->displaySearchedMessagesInUI(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;

.field final synthetic val$searched_messages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$29;->this$0:Lcom/perm/kate/SearchActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchActivity$29;->val$searched_messages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$29;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$29;->val$searched_messages:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$7000(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)V

    return-void
.end method
