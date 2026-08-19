.class Lcom/perm/kate/SearchedDialogsAdapter$1;
.super Ljava/lang/Object;
.source "SearchedDialogsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchedDialogsAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchedDialogsAdapter;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/perm/kate/SearchedDialogsAdapter$1;->this$0:Lcom/perm/kate/SearchedDialogsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/SearchedDialogsAdapter$1;->this$0:Lcom/perm/kate/SearchedDialogsAdapter;

    invoke-static {v0}, Lcom/perm/kate/SearchedDialogsAdapter;->access$000(Lcom/perm/kate/SearchedDialogsAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
