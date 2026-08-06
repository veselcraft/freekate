.class Lcom/perm/kate/SearchedDialogsAdapter$1;
.super Ljava/lang/Object;
.source "SearchedDialogsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchedDialogsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchedDialogsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchedDialogsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchedDialogsAdapter;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/perm/kate/SearchedDialogsAdapter$1;->this$0:Lcom/perm/kate/SearchedDialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 112
    .local v0, "user_id":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SearchedDialogsAdapter$1;->this$0:Lcom/perm/kate/SearchedDialogsAdapter;

    invoke-static {v2}, Lcom/perm/kate/SearchedDialogsAdapter;->access$000(Lcom/perm/kate/SearchedDialogsAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 113
    return-void
.end method
