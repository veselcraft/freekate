.class Lcom/perm/kate/NewsCursorAdapter$2;
.super Ljava/lang/Object;
.source "NewsCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCursorAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCursorAdapter;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$2;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$2;->this$0:Lcom/perm/kate/NewsCursorAdapter;

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method
