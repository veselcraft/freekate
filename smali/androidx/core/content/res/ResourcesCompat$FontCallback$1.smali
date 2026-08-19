.class Landroidx/core/content/res/ResourcesCompat$FontCallback$1;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V
    .locals 0

    .line 247
    iput-object p1, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$1;->this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iput-object p2, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$1;->val$typeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 250
    iget-object v0, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$1;->this$0:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget-object v1, p0, Landroidx/core/content/res/ResourcesCompat$FontCallback$1;->val$typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method
