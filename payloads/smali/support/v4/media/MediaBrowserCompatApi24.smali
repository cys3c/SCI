.class Landroid/support/v4/media/MediaBrowserCompatApi24;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi24.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;,
        Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static createSubscriptionCallback(Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;

    .prologue
    .line 29
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;)V

    return-object v0
.end method

.method public static subscribe(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 4
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p3, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p3    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 36
    return-void
.end method

.method public static unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p0, Landroid/media/browse/MediaBrowser;

    .end local p0    # "browserObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    .end local p2    # "subscriptionCallbackObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 42
    return-void
.end method