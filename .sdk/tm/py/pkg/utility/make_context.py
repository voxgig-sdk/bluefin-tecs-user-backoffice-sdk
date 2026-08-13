# BluefinTecsUserBackoffice SDK utility: make_context

from projectname_sdk.core.context import BluefinTecsUserBackofficeContext


def make_context_util(ctxmap, basectx):
    return BluefinTecsUserBackofficeContext(ctxmap, basectx)
