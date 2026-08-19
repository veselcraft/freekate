.class Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# instance fields
.field final synthetic this$1:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;Lcom/mobeta/android/dslv/DragSortListView;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper$1;->this$1:Lcom/mobeta/android/dslv/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
